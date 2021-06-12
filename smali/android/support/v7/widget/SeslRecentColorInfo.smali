.class public Landroid/support/v7/widget/SeslRecentColorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static sCurrentColor:Ljava/lang/Integer;

.field private static sNewColor:Ljava/lang/Integer;

.field private static sRecentColorInfo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSelectedColor:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SeslRecentColorInfo;->sRecentColorInfo:Ljava/util/LinkedList;

    return-void
.end method

.method private updateRecentColorInfo(Ljava/lang/Integer;)V
    .locals 2

    .line 59
    sget-object v0, Landroid/support/v7/widget/SeslRecentColorInfo;->sRecentColorInfo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 60
    sget-object v0, Landroid/support/v7/widget/SeslRecentColorInfo;->sRecentColorInfo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 62
    :cond_0
    sget-object v0, Landroid/support/v7/widget/SeslRecentColorInfo;->sRecentColorInfo:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCurrentColor()Ljava/lang/Integer;
    .locals 1

    .line 27
    sget-object v0, Landroid/support/v7/widget/SeslRecentColorInfo;->sCurrentColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNewColor()Ljava/lang/Integer;
    .locals 1

    .line 31
    sget-object v0, Landroid/support/v7/widget/SeslRecentColorInfo;->sNewColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRecentColorInfo()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 23
    sget-object v0, Landroid/support/v7/widget/SeslRecentColorInfo;->sRecentColorInfo:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getSelectedColor()Ljava/lang/Integer;
    .locals 1

    .line 35
    sget-object v0, Landroid/support/v7/widget/SeslRecentColorInfo;->sSelectedColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public initRecentColorInfo([I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 52
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 53
    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslRecentColorInfo;->updateRecentColorInfo(Ljava/lang/Integer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public saveSelectedColor(I)V
    .locals 0

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sput-object p1, Landroid/support/v7/widget/SeslRecentColorInfo;->sSelectedColor:Ljava/lang/Integer;

    return-void
.end method

.method public setCurrentColor(Ljava/lang/Integer;)V
    .locals 0

    .line 39
    sput-object p1, Landroid/support/v7/widget/SeslRecentColorInfo;->sCurrentColor:Ljava/lang/Integer;

    return-void
.end method

.method public setNewColor(Ljava/lang/Integer;)V
    .locals 0

    .line 43
    sput-object p1, Landroid/support/v7/widget/SeslRecentColorInfo;->sNewColor:Ljava/lang/Integer;

    return-void
.end method
