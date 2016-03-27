use utf8;
package PhoenixDB::Result::Team;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::Team

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

=head1 TABLE: C<teams>

=cut

__PACKAGE__->table("teams");

=head1 ACCESSORS

=head2 id

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 logo

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 level

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 a_b

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 coach_price

  data_type: 'decimal'
  is_nullable: 0
  size: [5,2]

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "logo",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "level",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "a_b",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "coach_price",
  { data_type => "decimal", is_nullable => 0, size => [5, 2] },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 fixtures

Type: has_many

Related object: L<PhoenixDB::Result::Fixture>

=cut

__PACKAGE__->has_many(
  "fixtures",
  "PhoenixDB::Result::Fixture",
  { "foreign.opponents" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 logo

Type: belongs_to

Related object: L<PhoenixDB::Result::Image>

=cut

__PACKAGE__->belongs_to(
  "logo",
  "PhoenixDB::Result::Image",
  { id => "logo" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IPBoamofci8NOWJ4H2Lkwg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
