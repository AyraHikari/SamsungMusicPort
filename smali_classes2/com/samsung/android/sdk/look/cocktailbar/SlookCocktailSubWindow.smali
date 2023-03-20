.class public final Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;
.super Ljava/lang/Object;
.source "SlookCocktailSubWindow.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static mSlook:Lcom/samsung/android/sdk/look/Slook;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSubWindow(Landroid/app/Activity;)Landroid/view/Window;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSubWindow deprecated from N OS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    if-eqz p0, :cond_2

    .line 7
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->getSubWindow(Landroid/app/Activity;)Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "activity is invalid."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "activity is null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setSubContentView(Landroid/app/Activity;I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setSubContentView deprecated from N OS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    if-eqz p0, :cond_2

    .line 7
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->getSubWindow(Landroid/app/Activity;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->setSubContentView(Landroid/app/Activity;I)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity is invalid."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public static setSubContentView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4

    .line 11
    sget-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 13
    new-instance v1, Ljava/lang/RuntimeException;

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setSubContentView deprecated from N OS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    if-eqz p0, :cond_2

    .line 17
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->getSubWindow(Landroid/app/Activity;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->setSubContentView(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity is invalid."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method
