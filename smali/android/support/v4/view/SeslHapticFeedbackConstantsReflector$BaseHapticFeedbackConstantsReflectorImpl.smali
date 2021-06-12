.class Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$BaseHapticFeedbackConstantsReflectorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$HapticFeedbackConstantsReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseHapticFeedbackConstantsReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$1;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$BaseHapticFeedbackConstantsReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_VIBE_COMMON_A()I
    .locals 2

    .line 29
    invoke-static {}, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "VIBE_COMMON_A"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 31
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 33
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public semGetVibrationIndex(I)I
    .locals 6

    .line 41
    invoke-static {}, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "semGetVibrationIndex"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 43
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v1, v0, v2}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 44
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
