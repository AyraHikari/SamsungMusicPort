.class abstract Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$IntProperty;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "IntProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Property<",
        "TT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1106
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1117
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$IntProperty;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1103
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$IntProperty;->a(Ljava/lang/Object;Ljava/lang/Integer;)V

    return-void
.end method
