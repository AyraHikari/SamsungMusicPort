.class final Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$FavoriteMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FavoriteMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$FavoriteMenu;->a:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 101
    check-cast v0, Ljava/lang/String;

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v1, 0x7f1305c0

    if-ne p1, v1, :cond_3

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$FavoriteMenu;->a:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->b:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;->a(Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;)Ljava/lang/Integer;

    move-result-object p1

    const v1, 0x100004

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$FavoriteMenu;->a:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->b:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;->b(Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "-14"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "recently_added_click_favorite"

    goto :goto_1

    :pswitch_1
    const-string v0, "-13"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "recently_played_click_favorite"

    goto :goto_1

    :pswitch_2
    const-string v0, "-12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "most_played_click_favorite"

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "playlist_detail_click_favorite"

    :goto_1
    move-object v0, p1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 115
    iget-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase$FavoriteMenu;->a:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics$FireBase;->b:Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;->c(Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const-string v1, "general_click_event"

    const-string v2, "click_event"

    .line 114
    invoke-static {p1, v1, v2, v0}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v0, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xaf0e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
