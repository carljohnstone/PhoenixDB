use utf8;
package PhoenixDB::Result::FanSponsorshipCategory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::FanSponsorshipCategory

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

=head1 TABLE: C<fan_sponsorship_categories>

=cut

__PACKAGE__->table("fan_sponsorship_categories");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 price

  data_type: 'decimal'
  extra: {unsigned => 1}
  is_nullable: 1
  size: [5,2]

=head2 order

  data_type: 'smallint'
  extra: {unsigned => 1}
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
  "name",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "price",
  {
    data_type => "decimal",
    extra => { unsigned => 1 },
    is_nullable => 1,
    size => [5, 2],
  },
  "order",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 fan_sponsorships

Type: has_many

Related object: L<PhoenixDB::Result::FanSponsorship>

=cut

__PACKAGE__->has_many(
  "fan_sponsorships",
  "PhoenixDB::Result::FanSponsorship",
  { "foreign.category" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:27
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YDO5HDgmwIArCvoeaeBNuA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
