.class final Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog$itemClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;-><init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)V
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
.field final synthetic this$0:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog$itemClick$1;->this$0:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 107
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog$itemClick$1;->invoke(Landroid/view/View;IJ)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;IJ)V
    .locals 0

    const-string p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog$itemClick$1;->this$0:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->a(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)I

    move-result p1

    const p3, 0x10030

    if-eq p1, p3, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog$itemClick$1;->this$0:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->b(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 113
    check-cast p1, Landroid/content/Context;

    const-string p3, "HTIT"

    const-string p4, "Touch item"

    .line 112
    invoke-static {p1, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p3, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog$itemClick$1;->this$0:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;

    iget-object p3, p3, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-static {p3}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->b(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getText1(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 p2, 0x0

    goto :goto_0

    :pswitch_1
    const-string p2, "Composers"

    goto :goto_0

    :pswitch_2
    const-string p2, "Folders"

    goto :goto_0

    :pswitch_3
    const-string p2, "Genres"

    goto :goto_0

    :pswitch_4
    const-string p2, "Playlists"

    goto :goto_0

    :pswitch_5
    const-string p2, "Artists"

    goto :goto_0

    :pswitch_6
    const-string p2, "Albums"

    :goto_0
    if-eqz p2, :cond_2

    const-string p3, "EIHT"

    .line 129
    invoke-static {p1, p3, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
