.class final Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->c(Landroid/content/Context;)Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
        "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$12;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;)Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    iget-object v0, p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$12;->a:Landroid/content/Context;

    .line 340
    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v1

    .line 339
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Ljava/util/List;Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$12;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->e:Ljava/util/List;

    sget-object v2, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    .line 342
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;)[J

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->g:[J

    :cond_0
    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 334
    check-cast p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$12;->a(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;)Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;

    move-result-object p1

    return-object p1
.end method
