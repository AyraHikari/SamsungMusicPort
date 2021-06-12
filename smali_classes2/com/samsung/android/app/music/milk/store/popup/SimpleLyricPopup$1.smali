.class Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->a(Landroid/app/Dialog;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$1;->a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$1;->a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->a(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$1;->a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->a(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 151
    check-cast p1, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$1;->a(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;)V

    return-void
.end method
