.class Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/SeslCompatibilityInfoReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompatibilityInfoApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_applicationScale(Landroid/content/res/Resources;)F
    .locals 2
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    invoke-static {p1}, Landroid/support/v4/content/res/SeslResourcesReflector;->getCompatibilityInfo(Landroid/content/res/Resources;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "android.content.res.CompatibilityInfo"

    const-string v1, "applicationScale"

    .line 26
    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    .line 29
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 30
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    return p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
