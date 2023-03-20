.class Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;
.super Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;
.source "RefCocktailBarManager.java"


# static fields
.field private static sInstance:Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;


# instance fields
.field public COCKTAIL_CATEGORY_GLOBAL:I

.field public COCKTAIL_DISPLAY_POLICY_GENERAL:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->sInstance:Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    invoke-direct {v1}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;-><init>()V

    sput-object v1, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->sInstance:Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->sInstance:Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public closeCocktail(Ljava/lang/Object;II)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    const-string p2, "closeCocktail"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public disableCocktail(Ljava/lang/Object;Landroid/content/ComponentName;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Landroid/content/ComponentName;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string p2, "disableCocktail"

    .line 2
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBaseClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.cocktailbar.CocktailBarManager"

    return-object v0
.end method

.method public getCocktailBarWindowType(Ljava/lang/Object;)I
    .locals 1

    const-string v0, "getCocktailBarWindowType"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCocktailIds(Ljava/lang/Object;Landroid/content/ComponentName;)[I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Landroid/content/ComponentName;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string p2, "getCocktailIds"

    .line 2
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, [I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isEnabledCocktail(Ljava/lang/Object;Landroid/content/ComponentName;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Landroid/content/ComponentName;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p2, v2, v3

    const-string p2, "isEnabledCocktail"

    .line 2
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public loadStaticFields()V
    .locals 2

    const-string v0, "COCKTAIL_DISPLAY_POLICY_GENERAL"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getIntStaticValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->COCKTAIL_DISPLAY_POLICY_GENERAL:I

    const-string v0, "COCKTAIL_CATEGORY_GLOBAL"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getIntStaticValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->COCKTAIL_CATEGORY_GLOBAL:I

    return-void
.end method

.method public notifyCocktailViewDataChanged(Ljava/lang/Object;II)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    const-string p2, "notifyCocktailViewDataChanged"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public partiallyUpdateCocktail(Ljava/lang/Object;ILandroid/widget/RemoteViews;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/widget/RemoteViews;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    aput-object p3, v0, v4

    const-string p2, "partiallyUpdateCocktail"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "com.samsung.android.cocktailbar.CocktailBarManager$CocktailBarStateListener"

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->loadClassIfNeeded(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string p2, "registerListener"

    .line 2
    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCocktailBarStatus(Ljava/lang/Object;ZZ)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, v4

    const-string p2, "setCocktailBarStatus"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOnPullPendingIntent(Ljava/lang/Object;IILandroid/app/PendingIntent;)V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Landroid/app/PendingIntent;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    aput-object p4, v0, v5

    const-string p2, "setOnPullPendingIntent"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public showCocktail(Ljava/lang/Object;I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    const-string p2, "showCocktail"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "com.samsung.android.cocktailbar.CocktailBarManager$CocktailBarStateListener"

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->loadClassIfNeeded(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string p2, "unregisterListener"

    .line 2
    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateCocktail(Ljava/lang/Object;IIILandroid/widget/RemoteViews;Landroid/os/Bundle;)V
    .locals 8

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Landroid/widget/RemoteViews;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Landroid/os/Bundle;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v5

    aput-object p5, v0, v6

    aput-object p6, v0, v7

    const-string p2, "updateCocktail"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateCocktail(Ljava/lang/Object;IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Class;

    .line 3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Landroid/widget/RemoteViews;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Landroid/widget/RemoteViews;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-class v2, Landroid/os/Bundle;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object p5, v0, v6

    aput-object p6, v0, v7

    aput-object p7, v0, v8

    const-string v2, "updateCocktail"

    move-object v3, p0

    move-object v4, p1

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateCocktail(Ljava/lang/Object;IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/content/ComponentName;)V
    .locals 10

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/Class;

    .line 5
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Landroid/widget/RemoteViews;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Landroid/widget/RemoteViews;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-class v2, Landroid/os/Bundle;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 6
    const-class v2, Landroid/content/ComponentName;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object p5, v0, v6

    aput-object p6, v0, v7

    aput-object p7, v0, v8

    aput-object p8, v0, v9

    const-string v2, "updateCocktail"

    move-object v3, p0

    move-object v4, p1

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateLongpressGesture(Ljava/lang/Object;Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, v3

    const-string p2, "updateLongpressGesture"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
