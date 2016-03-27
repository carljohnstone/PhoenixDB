use utf8;
package PhoenixDB::Result::Download;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::Download

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

=head1 TABLE: C<downloads>

=cut

__PACKAGE__->table("downloads");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 70

=head2 filename

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 content_type

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 size

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 modified_date

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 1
  locale: 'en_GB'
  timezone: 'Europe/London'

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
  { data_type => "varchar", is_nullable => 1, size => 70 },
  "filename",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "content_type",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "size",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "modified_date",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 1,
    locale => "en_GB",
    timezone => "Europe/London",
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 article_downloads

Type: has_many

Related object: L<PhoenixDB::Result::ArticleDownload>

=cut

__PACKAGE__->has_many(
  "article_downloads",
  "PhoenixDB::Result::ArticleDownload",
  { "foreign.download_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 download_data

Type: might_have

Related object: L<PhoenixDB::Result::DownloadData>

=cut

__PACKAGE__->might_have(
  "download_data",
  "PhoenixDB::Result::DownloadData",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 promos

Type: has_many

Related object: L<PhoenixDB::Result::Promo>

=cut

__PACKAGE__->has_many(
  "promos",
  "PhoenixDB::Result::Promo",
  { "foreign.download" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:27
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:l8i+9eWYuz9Qcv/PZjS0dg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
