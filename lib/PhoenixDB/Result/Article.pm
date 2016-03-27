use utf8;
package PhoenixDB::Result::Article;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::Article

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

=head1 TABLE: C<articles>

=cut

__PACKAGE__->table("articles");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 section

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 headline

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 teaser

  data_type: 'text'
  is_nullable: 0

=head2 publication_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0
  locale: 'en_GB'
  timezone: 'Europe/London'

=head2 bodytext

  data_type: 'text'
  is_nullable: 0

=head2 published

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 show_on_homepage

  data_type: 'tinyint'
  default_value: 1
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
  "section",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "headline",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "teaser",
  { data_type => "text", is_nullable => 0 },
  "publication_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
    locale => "en_GB",
    timezone => "Europe/London",
  },
  "bodytext",
  { data_type => "text", is_nullable => 0 },
  "published",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "show_on_homepage",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 article_articles_articles

Type: has_many

Related object: L<PhoenixDB::Result::ArticleArticle>

=cut

__PACKAGE__->has_many(
  "article_articles_articles",
  "PhoenixDB::Result::ArticleArticle",
  { "foreign.article_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 article_articles_related_articles

Type: has_many

Related object: L<PhoenixDB::Result::ArticleArticle>

=cut

__PACKAGE__->has_many(
  "article_articles_related_articles",
  "PhoenixDB::Result::ArticleArticle",
  { "foreign.related_article" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 article_downloads

Type: has_many

Related object: L<PhoenixDB::Result::ArticleDownload>

=cut

__PACKAGE__->has_many(
  "article_downloads",
  "PhoenixDB::Result::ArticleDownload",
  { "foreign.article_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 article_external_links

Type: has_many

Related object: L<PhoenixDB::Result::ArticleExternalLink>

=cut

__PACKAGE__->has_many(
  "article_external_links",
  "PhoenixDB::Result::ArticleExternalLink",
  { "foreign.article_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 article_images

Type: has_many

Related object: L<PhoenixDB::Result::ArticleImage>

=cut

__PACKAGE__->has_many(
  "article_images",
  "PhoenixDB::Result::ArticleImage",
  { "foreign.article_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 article_players

Type: has_many

Related object: L<PhoenixDB::Result::ArticlePlayer>

=cut

__PACKAGE__->has_many(
  "article_players",
  "PhoenixDB::Result::ArticlePlayer",
  { "foreign.article_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fixtures

Type: has_many

Related object: L<PhoenixDB::Result::Fixture>

=cut

__PACKAGE__->has_many(
  "fixtures",
  "PhoenixDB::Result::Fixture",
  { "foreign.match_report" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 homepage_articles

Type: has_many

Related object: L<PhoenixDB::Result::HomepageArticle>

=cut

__PACKAGE__->has_many(
  "homepage_articles",
  "PhoenixDB::Result::HomepageArticle",
  { "foreign.article" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 promos

Type: has_many

Related object: L<PhoenixDB::Result::Promo>

=cut

__PACKAGE__->has_many(
  "promos",
  "PhoenixDB::Result::Promo",
  { "foreign.article" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:27
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:67d0L8+jW0guqmBGfVRZyg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
