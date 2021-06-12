.class Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;->a(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/util/CollectionsUtils$Condition<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1$1;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/OnlineTrack;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 210
    invoke-interface {p1}, Lcom/samsung/android/app/music/model/OnlineTrack;->getTrackId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1$1;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 207
    check-cast p1, Lcom/samsung/android/app/music/model/OnlineTrack;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1$1$1;->a(Lcom/samsung/android/app/music/model/OnlineTrack;)Z

    move-result p1

    return p1
.end method
