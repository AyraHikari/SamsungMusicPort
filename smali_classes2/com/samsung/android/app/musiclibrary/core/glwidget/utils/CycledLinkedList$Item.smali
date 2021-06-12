.class Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListItem:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "ListItem;"
        }
    .end annotation
.end field

.field public next:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item<",
            "T",
            "ListItem;",
            ">;"
        }
    .end annotation
.end field

.field public prev:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item<",
            "T",
            "ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$1;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;-><init>()V

    return-void
.end method
