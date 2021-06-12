.class Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$OnTagSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$2;->a:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$2;->a:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ThemesFragment"

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTagSelected. pos - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", cursor null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "tag_id"

    .line 150
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 149
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tag_name"

    .line 152
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 151
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "extra_id"

    .line 155
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$2;->a:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;

    .line 158
    invoke-virtual {v3}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_1

    const/16 v3, 0x3d

    .line 161
    invoke-static {v3, v2}, Lcom/samsung/android/app/music/browse/list/details/BrowseFragmentFactory;->a(ILandroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 162
    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$2;->a:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 163
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$2;->a:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$2;->a:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;

    .line 164
    invoke-static {v6}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->a(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 162
    invoke-static {v3, v4, v2, v5}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    .line 165
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$2;->a:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->a(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$2;->a:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->a(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;I)I

    .line 167
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$2;->a:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string v1, "click_theme_button"

    const-string v2, "theme_name"

    invoke-virtual {p1, v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
