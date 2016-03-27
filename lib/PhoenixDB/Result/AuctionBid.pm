use utf8;
package PhoenixDB::Result::AuctionBid;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::AuctionBid

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

=head1 TABLE: C<auction_bid>

=cut

__PACKAGE__->table("auction_bid");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 item

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 bid

  data_type: 'decimal'
  is_nullable: 1
  size: [10,2]

=head2 bidtime

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1
  locale: 'en_GB'
  timezone: 'Europe/London'

=head2 firstname

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 lastname

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 telephone

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 nick

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "item",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "bid",
  { data_type => "decimal", is_nullable => 1, size => [10, 2] },
  "bidtime",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
    locale => "en_GB",
    timezone => "Europe/London",
  },
  "firstname",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "lastname",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "telephone",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "nick",
  { data_type => "varchar", is_nullable => 1, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 item

Type: belongs_to

Related object: L<PhoenixDB::Result::AuctionItem>

=cut

__PACKAGE__->belongs_to(
  "item",
  "PhoenixDB::Result::AuctionItem",
  { id => "item" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:27
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mbmyESmPqIKbEZoPfda1ug


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
