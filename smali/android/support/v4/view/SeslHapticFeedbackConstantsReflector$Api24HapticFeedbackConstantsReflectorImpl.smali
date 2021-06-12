.class Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$Api24HapticFeedbackConstantsReflectorImpl;
.super Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$BaseHapticFeedbackConstantsReflectorImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24HapticFeedbackConstantsReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$BaseHapticFeedbackConstantsReflectorImpl;-><init>(Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$1;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$Api24HapticFeedbackConstantsReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_VIBE_COMMON_A()I
    .locals 2

    .line 58
    invoke-static {}, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SEM_VIBE_COMMON_A"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 60
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 62
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
