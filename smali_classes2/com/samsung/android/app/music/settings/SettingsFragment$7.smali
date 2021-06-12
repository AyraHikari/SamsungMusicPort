.class Lcom/samsung/android/app/music/settings/SettingsFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/SettingsFragment;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/SettingsFragment;)V
    .locals 0

    .line 1778
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$7;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1805
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1807
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result p1

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 1815
    :pswitch_0
    iput p2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$7;->c:I

    .line 1816
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$7;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->k(Lcom/samsung/android/app/music/settings/SettingsFragment;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    if-lez p2, :cond_1

    iget p2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$7;->b:I

    if-ge p2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 1809
    :pswitch_1
    iput p2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$7;->b:I

    .line 1810
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$7;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->j(Lcom/samsung/android/app/music/settings/SettingsFragment;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    if-lez p2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1811
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$7;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->k(Lcom/samsung/android/app/music/settings/SettingsFragment;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iget v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$7;->c:I

    if-lez v3, :cond_3

    if-ge p2, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 1786
    iget-object p2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$7;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 p2, 0x0

    .line 1787
    iput p2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$7;->b:I

    .line 1788
    iput p2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$7;->c:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 1795
    :pswitch_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string p2, "count(*)"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 1791
    :pswitch_1
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string p2, "count(*)"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 1778
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/settings/SettingsFragment$7;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
