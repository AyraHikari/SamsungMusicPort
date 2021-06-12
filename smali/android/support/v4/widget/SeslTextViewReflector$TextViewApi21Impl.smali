.class Landroid/support/v4/widget/SeslTextViewReflector$TextViewApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/SeslTextViewReflector$TextViewBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SeslTextViewReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextViewApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/SeslTextViewReflector$1;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/support/v4/widget/SeslTextViewReflector$TextViewApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_SEM_AUTOFILL_ID(Landroid/widget/TextView;)I
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public getField_mSingleLine(Landroid/widget/TextView;)Z
    .locals 2
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-static {}, Landroid/support/v4/widget/SeslTextViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mSingleLine"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    .line 51
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 52
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isTextSelectionProgressing()Z
    .locals 4

    .line 60
    invoke-static {}, Landroid/support/v4/widget/SeslTextViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "semIsTextSelectionProgressing"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 62
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 64
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    return v2
.end method

.method public isTextViewHovered()Z
    .locals 4

    .line 72
    invoke-static {}, Landroid/support/v4/widget/SeslTextViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "semIsTextViewHovered"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 74
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 76
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    return v2
.end method

.method public semSetActionModeMenuItemEnabled(Landroid/widget/TextView;IZ)V
    .locals 7
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-static {}, Landroid/support/v4/widget/SeslTextViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setNewActionPopupMenu"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, v6

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
