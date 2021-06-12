.class Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;->a(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/util/CollectionsUtils$Condition<",
        "Lcom/samsung/android/app/music/model/base/TrackModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9$1;->a:Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/base/TrackModel;)Z
    .locals 1

    .line 252
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9$1;->a:Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;

    iget-object v0, v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 249
    check-cast p1, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9$1;->a(Lcom/samsung/android/app/music/model/base/TrackModel;)Z

    move-result p1

    return p1
.end method
