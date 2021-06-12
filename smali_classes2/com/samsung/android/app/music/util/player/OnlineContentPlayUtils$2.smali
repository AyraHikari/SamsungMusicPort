.class final Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Ljava/lang/String;IZ)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->c:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    iput-object p4, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->d:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->e:I

    iput-boolean p6, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2$1;-><init>(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
