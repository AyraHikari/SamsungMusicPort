.class Landroid/arch/core/internal/SafeIterableMap$AscendingIterator;
.super Landroid/arch/core/internal/SafeIterableMap$ListIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/core/internal/SafeIterableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AscendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/core/internal/SafeIterableMap$ListIterator<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/arch/core/internal/SafeIterableMap$Entry;Landroid/arch/core/internal/SafeIterableMap$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;",
            "Landroid/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 270
    invoke-direct {p0, p1, p2}, Landroid/arch/core/internal/SafeIterableMap$ListIterator;-><init>(Landroid/arch/core/internal/SafeIterableMap$Entry;Landroid/arch/core/internal/SafeIterableMap$Entry;)V

    return-void
.end method


# virtual methods
.method a(Landroid/arch/core/internal/SafeIterableMap$Entry;)Landroid/arch/core/internal/SafeIterableMap$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;)",
            "Landroid/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 275
    iget-object p1, p1, Landroid/arch/core/internal/SafeIterableMap$Entry;->c:Landroid/arch/core/internal/SafeIterableMap$Entry;

    return-object p1
.end method

.method b(Landroid/arch/core/internal/SafeIterableMap$Entry;)Landroid/arch/core/internal/SafeIterableMap$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;)",
            "Landroid/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 280
    iget-object p1, p1, Landroid/arch/core/internal/SafeIterableMap$Entry;->d:Landroid/arch/core/internal/SafeIterableMap$Entry;

    return-object p1
.end method
