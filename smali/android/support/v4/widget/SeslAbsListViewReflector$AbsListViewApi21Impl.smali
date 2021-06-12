.class Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SeslAbsListViewReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AbsListViewApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/SeslAbsListViewReflector$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_mEdgeGlowTop(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 2
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-static {}, Landroid/support/v4/widget/SeslAbsListViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mEdgeGlowTop"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 33
    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    .line 34
    instance-of v0, p1, Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 35
    check-cast p1, Landroid/widget/EdgeEffect;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public positionSelector(Landroid/widget/AbsListView;ILandroid/view/View;)V
    .locals 7
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    invoke-static {}, Landroid/support/v4/widget/SeslAbsListViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "positionSelector"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/view/View;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 61
    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 65
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setField_mEdgeGlowBottom(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V
    .locals 2
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-static {}, Landroid/support/v4/widget/SeslAbsListViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mEdgeGlowBottom"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 55
    invoke-static {p1, v0, p2}, Landroid/support/v4/SeslBaseReflector;->set(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setField_mEdgeGlowTop(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V
    .locals 2
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-static {}, Landroid/support/v4/widget/SeslAbsListViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mEdgeGlowTop"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    invoke-static {p1, v0, p2}, Landroid/support/v4/SeslBaseReflector;->set(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
