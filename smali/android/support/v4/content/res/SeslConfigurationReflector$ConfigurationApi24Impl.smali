.class Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationApi24Impl;
.super Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationApi21Impl;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/SeslConfigurationReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigurationApi24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0}, Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationApi21Impl;-><init>(Landroid/support/v4/content/res/SeslConfigurationReflector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/res/SeslConfigurationReflector$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationApi24Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_SEM_DESKTOP_MODE_ENABLED(Landroid/content/res/Configuration;)I
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    invoke-static {}, Landroid/support/v4/content/res/SeslConfigurationReflector;->access$100()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SEM_DESKTOP_MODE_ENABLED"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 56
    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    .line 57
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getField_semDesktopModeEnabled(Landroid/content/res/Configuration;)I
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-static {}, Landroid/support/v4/content/res/SeslConfigurationReflector;->access$100()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "semDesktopModeEnabled"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 43
    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

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
