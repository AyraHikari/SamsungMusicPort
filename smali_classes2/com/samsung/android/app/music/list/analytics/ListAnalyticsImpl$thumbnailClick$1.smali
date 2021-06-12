.class final Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$thumbnailClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
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
.field final synthetic this$0:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$thumbnailClick$1;->this$0:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 15
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$thumbnailClick$1;->invoke(Landroid/view/View;IJ)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;IJ)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$thumbnailClick$1;->this$0:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->c(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;->b()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
