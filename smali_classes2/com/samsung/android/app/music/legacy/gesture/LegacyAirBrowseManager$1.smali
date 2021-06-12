.class Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$1;->a:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureEventChanged(I)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$1;->a:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->a(Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;)Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onGestureEventChanged mOnAirBrowseChangedListener is null"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGestureEventChanged motion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 96
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$1;->a:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->a(Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;)Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;->a()V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$1;->a:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->a(Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;)Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;->b()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
