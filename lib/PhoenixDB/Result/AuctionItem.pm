use utf8;
package PhoenixDB::Result::AuctionItem;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::AuctionItem

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

=head1 TABLE: C<auction_item>

=cut

__PACKAGE__->table("auction_item");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 image

  data_type: 'integer'
  default_value: 511
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 body

  data_type: 'text'
  is_nullable: 1

=head2 starts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1
  locale: 'en_GB'
  timezone: 'Europe/London'

=head2 expires

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0
  locale: 'en_GB'
  timezone: 'Europe/London'

=head2 conf_email_sent

  data_type: 'tinyint'
  default_value: 0
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
  "title",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "image",
  {
    data_type => "integer",
    default_value => 511,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "body",
  { data_type => "text", is_nullable => 1 },
  "starts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
    locale => "en_GB",
    timezone => "Europe/London",
  },
  "expires",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00 00:00:00",
    is_nullable => 0,
    locale => "en_GB",
    timezone => "Europe/London",
  },
  "conf_email_sent",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 auction_bids

Type: has_many

Related object: L<PhoenixDB::Result::AuctionBid>

=cut

__PACKAGE__->has_many(
  "auction_bids",
  "PhoenixDB::Result::AuctionBid",
  { "foreign.item" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 image

Type: belongs_to

Related object: L<PhoenixDB::Result::Image>

=cut

__PACKAGE__->belongs_to(
  "image",
  "PhoenixDB::Result::Image",
  { id => "image" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:27
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eK9Uf+u/Cjf6/icoAA8oow


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
