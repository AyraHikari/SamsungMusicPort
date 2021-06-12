.class Lcom/samsung/android/sdk/look/RefPointerIcon;
.super Lcom/samsung/android/sdk/look/AbstractBaseReflection;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/samsung/android/sdk/look/RefPointerIcon;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/AbstractBaseReflection;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/android/sdk/look/RefPointerIcon;
    .locals 1

    .line 15
    sget-object v0, Lcom/samsung/android/sdk/look/RefPointerIcon;->sInstance:Lcom/samsung/android/sdk/look/RefPointerIcon;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/samsung/android/sdk/look/RefPointerIcon;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/RefPointerIcon;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/look/RefPointerIcon;->sInstance:Lcom/samsung/android/sdk/look/RefPointerIcon;

    .line 18
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/look/RefPointerIcon;->sInstance:Lcom/samsung/android/sdk/look/RefPointerIcon;

    return-object v0
.end method


# virtual methods
.method protected getBaseClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "android.view.PointerIcon"

    return-object v0
.end method

.method public setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I
    .locals 5

    const/4 v0, 0x2

    .line 29
    new-array v1, v0, [Ljava/lang/Class;

    .line 30
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "setHoveringSpenIcon"

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/sdk/look/RefPointerIcon;->invokeStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public setHoveringSpenIcon(II)V
    .locals 5

    const/4 v0, 0x2

    .line 22
    new-array v1, v0, [Ljava/lang/Class;

    .line 23
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "setHoveringSpenIcon"

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/sdk/look/RefPointerIcon;->invokeStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
