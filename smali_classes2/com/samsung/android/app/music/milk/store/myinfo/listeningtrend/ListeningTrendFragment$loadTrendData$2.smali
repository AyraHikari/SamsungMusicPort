.class final Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$loadTrendData$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$loadTrendData$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$loadTrendData$2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$loadTrendData$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$loadTrendData$2;->a:Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$loadTrendData$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "Ui"

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ListeningTrend_ListeningTrendFragment | onError() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$loadTrendData$2;->a(Ljava/lang/Throwable;)V

    return-void
.end method
