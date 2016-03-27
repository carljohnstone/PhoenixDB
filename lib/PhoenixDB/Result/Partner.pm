use utf8;
package PhoenixDB::Result::Partner;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::Partner

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

=head1 TABLE: C<partners>

=cut

__PACKAGE__->table("partners");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 shortdesc

  data_type: 'text'
  is_nullable: 1

=head2 longdesc

  data_type: 'text'
  is_nullable: 1

=head2 url

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 logo

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 published

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 show_senior

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 senior_order

  data_type: 'smallint'
  is_nullable: 1

=head2 show_nihl

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 nihl_order

  data_type: 'smallint'
  is_nullable: 1

=head2 show_juniors

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 juniors_order

  data_type: 'smallint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "shortdesc",
  { data_type => "text", is_nullable => 1 },
  "longdesc",
  { data_type => "text", is_nullable => 1 },
  "url",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "logo",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "published",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "show_senior",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "senior_order",
  { data_type => "smallint", is_nullable => 1 },
  "show_nihl",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "nihl_order",
  { data_type => "smallint", is_nullable => 1 },
  "show_juniors",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "juniors_order",
  { data_type => "smallint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4Y/yWBQ/oV4N648SOyygmA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
