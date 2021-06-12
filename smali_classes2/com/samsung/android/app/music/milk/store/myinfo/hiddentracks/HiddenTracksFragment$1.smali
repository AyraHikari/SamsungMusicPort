.class Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "UiList"

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "accept() - getHiddenTrack()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->g()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->a(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;I)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$1;->a(Ljava/lang/Integer;)V

    return-void
.end method
