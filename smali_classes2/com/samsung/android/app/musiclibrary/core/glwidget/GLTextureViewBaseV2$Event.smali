.class Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation


# instance fields
.field public height:I

.field public msg:I

.field public obj:Ljava/lang/Object;

.field public width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 581
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;-><init>()V

    return-void
.end method

.method private static msgToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    const-string v0, "Unk: %d"

    const/4 v1, 0x1

    .line 614
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "RUNNABLE"

    return-object p0

    :pswitch_1
    const-string p0, "ANIMATION"

    return-object p0

    :pswitch_2
    const-string p0, "SURFACE_DESTROYED"

    return-object p0

    :pswitch_3
    const-string p0, "SURFACE_SIZE_CHANGED"

    return-object p0

    :pswitch_4
    const-string p0, "SURFACE_AVAILABLE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 598
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->obj:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event{msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->msg:I

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->msgToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
