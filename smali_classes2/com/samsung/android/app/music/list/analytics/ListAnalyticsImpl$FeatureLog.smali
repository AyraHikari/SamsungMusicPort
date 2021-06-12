.class final Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FeatureLog"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

.field private final b:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;->a:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance p1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog$itemClick$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog$itemClick$1;-><init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;)V

    check-cast p1, Lkotlin/jvm/functions/Function3;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;->b:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public a()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FeatureLog;->b:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public b()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    return-object v0
.end method
