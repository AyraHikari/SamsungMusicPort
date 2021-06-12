.class final Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Lcom/samsung/android/app/music/model/AdInfo;)V
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Z

.field final synthetic i:Z

.field final synthetic j:Lcom/samsung/android/app/music/model/AdInfo;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/samsung/android/app/music/model/AdInfo;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->c:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    iput-object p4, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->g:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->h:Z

    iput-boolean p9, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->i:Z

    iput-object p10, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->j:Lcom/samsung/android/app/music/model/AdInfo;

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

    .line 190
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;-><init>(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;)V

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

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
