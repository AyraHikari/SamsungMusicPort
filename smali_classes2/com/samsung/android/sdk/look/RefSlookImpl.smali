.class Lcom/samsung/android/sdk/look/RefSlookImpl;
.super Lcom/samsung/android/sdk/look/AbstractBaseReflection;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/samsung/android/sdk/look/RefSlookImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/AbstractBaseReflection;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/android/sdk/look/RefSlookImpl;
    .locals 1

    .line 13
    sget-object v0, Lcom/samsung/android/sdk/look/RefSlookImpl;->sInstance:Lcom/samsung/android/sdk/look/RefSlookImpl;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/samsung/android/sdk/look/RefSlookImpl;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/RefSlookImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/look/RefSlookImpl;->sInstance:Lcom/samsung/android/sdk/look/RefSlookImpl;

    .line 16
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/look/RefSlookImpl;->sInstance:Lcom/samsung/android/sdk/look/RefSlookImpl;

    return-object v0
.end method


# virtual methods
.method protected getBaseClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.sdk.look.SlookImpl"

    return-object v0
.end method

.method public isFeatureEnabled(I)Z
    .locals 4

    const/4 v0, 0x1

    .line 20
    new-array v1, v0, [Ljava/lang/Class;

    .line 21
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "isFeatureEnabled"

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/sdk/look/RefSlookImpl;->invokeStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 24
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_0
    return v3
.end method
