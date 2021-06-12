.class Landroid/support/v4/widget/SeslTextViewReflector$TextViewApi24Impl;
.super Landroid/support/v4/widget/SeslTextViewReflector$TextViewApi21Impl;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SeslTextViewReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextViewApi24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Landroid/support/v4/widget/SeslTextViewReflector$TextViewApi21Impl;-><init>(Landroid/support/v4/widget/SeslTextViewReflector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/SeslTextViewReflector$1;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Landroid/support/v4/widget/SeslTextViewReflector$TextViewApi24Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_SEM_AUTOFILL_ID(Landroid/widget/TextView;)I
    .locals 2
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    invoke-static {}, Landroid/support/v4/widget/SeslTextViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SEM_AUTOFILL_ID"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 90
    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    .line 91
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public semSetActionModeMenuItemEnabled(Landroid/widget/TextView;IZ)V
    .locals 7
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 100
    invoke-static {}, Landroid/support/v4/widget/SeslTextViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "semSetActionModeMenuItemEnabled"

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

    .line 103
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
