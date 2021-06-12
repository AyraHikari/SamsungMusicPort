.class final Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$itemClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;-><init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroid/view/View;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$itemClick$1;->this$0:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 30
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$itemClick$1;->invoke(Landroid/view/View;IJ)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;IJ)V
    .locals 2

    const-string p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 32
    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    .line 35
    iget-object p4, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$itemClick$1;->this$0:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;

    iget-object p4, p4, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-static {p4}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->a(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)I

    move-result p4

    const v0, 0x110001

    if-eq p4, v0, :cond_0

    const v0, 0x110027

    if-eq p4, v0, :cond_0

    packed-switch p4, :pswitch_data_0

    packed-switch p4, :pswitch_data_1

    move-object p4, p3

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string p3, "click_local_track_title"

    const-string p4, "click_local_track_title"

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$itemClick$1;->this$0:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->b(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    if-nez v1, :cond_1

    move-object v0, p1

    :cond_1
    check-cast v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    if-eqz v0, :cond_4

    .line 48
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->b(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 49
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    move-object p1, p2

    :cond_3
    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    const-string p3, "click_local_track_title"

    const-string p4, "click_local_track_title"

    .line 53
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase$itemClick$1;->this$0:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->b(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    const-string p2, "1"

    .line 54
    invoke-static {p1, p3, p4, p2}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x100002
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x100006
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
