.class Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$1;->a:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f130408

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_1

    const v1, 0x7f13040a

    if-eq p1, v1, :cond_3

    const v1, 0x7f13040c

    if-eq p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 67
    :goto_0
    instance-of v1, v0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$PlayOptionSettingItems;

    if-eqz v1, :cond_5

    .line 68
    check-cast v0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$PlayOptionSettingItems;

    .line 69
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$PlayOptionSettingItems;->b(I)I

    move-result v0

    .line 68
    invoke-static {v0}, Lcom/samsung/android/app/music/settings/MilkSettings;->a(I)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$1;->a:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$1;->a:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;Landroid/view/View;I)V

    .line 71
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$1;->a:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->a()I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-static {p1, v2}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;Z)V

    goto :goto_2

    .line 72
    :cond_5
    instance-of v1, v0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$EnqueueOptionSettingItems;

    if-eqz v1, :cond_6

    .line 73
    check-cast v0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$EnqueueOptionSettingItems;

    .line 74
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$EnqueueOptionSettingItems;->b(I)I

    move-result v0

    .line 73
    invoke-static {v0}, Lcom/samsung/android/app/music/settings/MilkSettings;->b(I)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$1;->a:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$1;->a:Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->b(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;->a(Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;Landroid/view/View;I)V

    :cond_6
    :goto_2
    return-void
.end method
