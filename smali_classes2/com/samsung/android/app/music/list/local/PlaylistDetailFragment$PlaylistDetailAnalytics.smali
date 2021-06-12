.class final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlaylistDetailAnalytics"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

.field private final b:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

.field private final c:Lkotlin/jvm/functions/Function3;
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

.field private final d:Lkotlin/jvm/functions/Function3;
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
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1512
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    new-instance v0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;->b:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    .line 1516
    new-instance p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics$itemClick$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics$itemClick$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;)V

    check-cast p1, Lkotlin/jvm/functions/Function3;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;->c:Lkotlin/jvm/functions/Function3;

    .line 1520
    new-instance p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics$thumbnailClick$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics$thumbnailClick$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;)V

    check-cast p1, Lkotlin/jvm/functions/Function3;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;->d:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;)Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;
    .locals 0

    .line 1512
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;->b:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    return-object p0
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

    .line 1516
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;->c:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final a(II)V
    .locals 7

    .line 1530
    invoke-static {p2}, Lcom/samsung/android/app/music/provider/CpAttrs;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x10003

    if-ne p1, v0, :cond_0

    .line 1531
    sget-object v1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a:Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getScreenId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1101"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a(Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 1533
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/music/provider/CpAttrs;->c(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x10002

    if-ne p1, p2, :cond_1

    .line 1534
    sget-object v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a:Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getScreenId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1102"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a(Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
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

    .line 1520
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;->d:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final c()V
    .locals 6

    .line 1525
    sget-object v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a:Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getScreenId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1544"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a(Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
