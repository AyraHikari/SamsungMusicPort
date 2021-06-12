.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mLength:I

.field private mName:[I


# direct methods
.method public constructor <init>([FI)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    array-length v0, p1

    div-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->mLength:I

    const/4 p2, 0x1

    .line 34
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->mName:[I

    .line 35
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->mName:[I

    array-length p2, p2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->mName:[I

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 37
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->mName:[I

    aget p2, p2, v1

    const v0, 0x8892

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 38
    array-length p2, p1

    mul-int/lit8 p2, p2, 0x4

    .line 39
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 40
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 42
    invoke-virtual {v2, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 43
    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const p1, 0x88e8

    .line 44
    invoke-static {v0, p2, v2, p1}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->mName:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public getLength()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->mLength:I

    return v0
.end method
