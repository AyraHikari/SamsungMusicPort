.class Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/service/gesture/GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$2;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureEvent(Lcom/samsung/android/service/gesture/GestureEvent;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$2;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->access$400(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$2;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->access$400(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;->onGestureEventChanged(I)V

    :cond_0
    return-void
.end method
