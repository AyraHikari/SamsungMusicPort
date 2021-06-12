.class public final Lkotlin/collections/RingBuffer$iterator$1;
.super Lkotlin/collections/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/RingBuffer;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/collections/RingBuffer;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lkotlin/collections/RingBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lkotlin/collections/RingBuffer$iterator$1;->a:Lkotlin/collections/RingBuffer;

    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;-><init>()V

    .line 106
    invoke-virtual {p1}, Lkotlin/collections/RingBuffer;->size()I

    move-result v0

    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->b:I

    .line 107
    invoke-static {p1}, Lkotlin/collections/RingBuffer;->b(Lkotlin/collections/RingBuffer;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/RingBuffer$iterator$1;->c:I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 110
    iget v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->b:I

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer$iterator$1;->b()V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->a:Lkotlin/collections/RingBuffer;

    invoke-static {v0}, Lkotlin/collections/RingBuffer;->a(Lkotlin/collections/RingBuffer;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->c:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/collections/RingBuffer$iterator$1;->a(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->a:Lkotlin/collections/RingBuffer;

    iget v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->c:I

    add-int/lit8 v1, v1, 0x1

    .line 199
    invoke-virtual {v0}, Lkotlin/collections/RingBuffer;->c()I

    move-result v0

    rem-int/2addr v1, v0

    iput v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->c:I

    .line 116
    iget v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->b:I

    :goto_0
    return-void
.end method
