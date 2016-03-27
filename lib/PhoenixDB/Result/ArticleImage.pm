use utf8;
package PhoenixDB::Result::ArticleImage;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::ArticleImage

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

=head1 TABLE: C<article_images>

=cut

__PACKAGE__->table("article_images");

=head1 ACCESSORS

=head2 article_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 related_image

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 order

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 caption

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "article_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "related_image",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "order",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "caption",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</article_id>

=item * L</related_image>

=back

=cut

__PACKAGE__->set_primary_key("article_id", "related_image");

=head1 RELATIONS

=head2 article

Type: belongs_to

Related object: L<PhoenixDB::Result::Article>

=cut

__PACKAGE__->belongs_to(
  "article",
  "PhoenixDB::Result::Article",
  { id => "article_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 related_image

Type: belongs_to

Related object: L<PhoenixDB::Result::Image>

=cut

__PACKAGE__->belongs_to(
  "related_image",
  "PhoenixDB::Result::Image",
  { id => "related_image" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:27
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3BDrIhaVJMAxwUrz2QMH9A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
