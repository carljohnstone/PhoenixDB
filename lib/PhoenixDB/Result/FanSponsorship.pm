use utf8;
package PhoenixDB::Result::FanSponsorship;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::FanSponsorship

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

=head1 TABLE: C<fan_sponsorships>

=cut

__PACKAGE__->table("fan_sponsorships");

=head1 ACCESSORS

=head2 category

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 player

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 text

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=cut

__PACKAGE__->add_columns(
  "category",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "player",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "text",
  { data_type => "varchar", is_nullable => 0, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</category>

=item * L</player>

=back

=cut

__PACKAGE__->set_primary_key("category", "player");

=head1 RELATIONS

=head2 category

Type: belongs_to

Related object: L<PhoenixDB::Result::FanSponsorshipCategory>

=cut

__PACKAGE__->belongs_to(
  "category",
  "PhoenixDB::Result::FanSponsorshipCategory",
  { id => "category" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 player

Type: belongs_to

Related object: L<PhoenixDB::Result::Player>

=cut

__PACKAGE__->belongs_to(
  "player",
  "PhoenixDB::Result::Player",
  { id => "player" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:27
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:APx4gbjRQF+IidDcGD8B6w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
