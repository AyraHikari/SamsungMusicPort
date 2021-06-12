.class Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListItem:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "T",
        "ListItem;",
        ">;",
        "Ljava/util/Iterator<",
        "T",
        "ListItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$1;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "T",
            "ListItem;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListItem;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is readonly iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
