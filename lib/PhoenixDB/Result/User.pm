use utf8;
package PhoenixDB::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::User

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<users>

=cut

__PACKAGE__->table("users");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 firstname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 45

=head2 lastname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 45

=head2 password

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 45

=head2 email

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 phoenixtv_sub

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "firstname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 45 },
  "lastname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 45 },
  "password",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 45 },
  "email",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "phoenixtv_sub",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<email>

=over 4

=item * L</email>

=back

=cut

__PACKAGE__->add_unique_constraint("email", ["email"]);

=head1 RELATIONS

=head2 user_roles

Type: has_many

Related object: L<PhoenixDB::Result::UserRole>

=cut

__PACKAGE__->has_many(
  "user_roles",
  "PhoenixDB::Result::UserRole",
  { "foreign.user_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 roles

Type: many_to_many

Composing rels: L</user_roles> -> role

=cut

__PACKAGE__->many_to_many("roles", "user_roles", "role");


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NlH8VkDqeB3Dla/DGAdyLg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
