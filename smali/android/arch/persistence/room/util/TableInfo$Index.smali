.class public Landroid/arch/persistence/room/util/TableInfo$Index;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/util/TableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Index"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p1, p0, Landroid/arch/persistence/room/util/TableInfo$Index;->a:Ljava/lang/String;

    .line 546
    iput-boolean p2, p0, Landroid/arch/persistence/room/util/TableInfo$Index;->b:Z

    .line 547
    iput-object p3, p0, Landroid/arch/persistence/room/util/TableInfo$Index;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 553
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 555
    :cond_1
    check-cast p1, Landroid/arch/persistence/room/util/TableInfo$Index;

    .line 556
    iget-boolean v1, p0, Landroid/arch/persistence/room/util/TableInfo$Index;->b:Z

    iget-boolean v2, p1, Landroid/arch/persistence/room/util/TableInfo$Index;->b:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 559
    :cond_2
    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo$Index;->c:Ljava/util/List;

    iget-object v2, p1, Landroid/arch/persistence/room/util/TableInfo$Index;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 562
    :cond_3
    iget-object v0, p0, Landroid/arch/persistence/room/util/TableInfo$Index;->a:Ljava/lang/String;

    const-string v1, "index_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 563
    iget-object p1, p1, Landroid/arch/persistence/room/util/TableInfo$Index;->a:Ljava/lang/String;

    const-string v0, "index_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 565
    :cond_4
    iget-object v0, p0, Landroid/arch/persistence/room/util/TableInfo$Index;->a:Ljava/lang/String;

    iget-object p1, p1, Landroid/arch/persistence/room/util/TableInfo$Index;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 572
    iget-object v0, p0, Landroid/arch/persistence/room/util/TableInfo$Index;->a:Ljava/lang/String;

    const-string v1, "index_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "index_"

    .line 573
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 575
    :cond_0
    iget-object v0, p0, Landroid/arch/persistence/room/util/TableInfo$Index;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 577
    iget-boolean v1, p0, Landroid/arch/persistence/room/util/TableInfo$Index;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 578
    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo$Index;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo$Index;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", unique="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/arch/persistence/room/util/TableInfo$Index;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo$Index;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
