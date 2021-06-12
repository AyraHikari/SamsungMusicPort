.class Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$2;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$2;->b:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$2;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$2;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$2;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;->a(Z)V

    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 123
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$2;->a(Ljava/lang/Boolean;)V

    return-void
.end method
