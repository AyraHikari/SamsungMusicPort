.class final Lkotlin/collections/AbstractList$SubList;
.super Lkotlin/collections/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private b:I

.field private final c:Lkotlin/collections/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/AbstractList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method public constructor <init>(Lkotlin/collections/AbstractList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/AbstractList<",
            "+TE;>;II)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    iput-object p1, p0, Lkotlin/collections/AbstractList$SubList;->c:Lkotlin/collections/AbstractList;

    iput p2, p0, Lkotlin/collections/AbstractList$SubList;->d:I

    .line 40
    sget-object p1, Lkotlin/collections/AbstractList;->a:Lkotlin/collections/AbstractList$Companion;

    iget p2, p0, Lkotlin/collections/AbstractList$SubList;->d:I

    iget-object v0, p0, Lkotlin/collections/AbstractList$SubList;->c:Lkotlin/collections/AbstractList;

    invoke-virtual {v0}, Lkotlin/collections/AbstractList;->size()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Lkotlin/collections/AbstractList$Companion;->a(III)V

    .line 41
    iget p1, p0, Lkotlin/collections/AbstractList$SubList;->d:I

    sub-int/2addr p3, p1

    iput p3, p0, Lkotlin/collections/AbstractList$SubList;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 50
    iget v0, p0, Lkotlin/collections/AbstractList$SubList;->b:I

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 45
    sget-object v0, Lkotlin/collections/AbstractList;->a:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/AbstractList$SubList;->b:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->a(II)V

    .line 47
    iget-object v0, p0, Lkotlin/collections/AbstractList$SubList;->c:Lkotlin/collections/AbstractList;

    iget v1, p0, Lkotlin/collections/AbstractList$SubList;->d:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lkotlin/collections/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
