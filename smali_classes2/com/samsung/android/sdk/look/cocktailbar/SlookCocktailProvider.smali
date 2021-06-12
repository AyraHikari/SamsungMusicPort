.class public Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final ACTION_COCKTAIL_DISABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

.field private static final ACTION_COCKTAIL_ENABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

.field private static final ACTION_COCKTAIL_UPDATE:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

.field private static final ACTION_COCKTAIL_UPDATE_V2:Ljava/lang/String; = "com.samsung.android.cocktail.v2.action.COCKTAIL_UPDATE"

.field private static final ACTION_COCKTAIL_VISIBILITY_CHANGED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

.field private static final EXTRA_COCKTAIL_ID:Ljava/lang/String; = "cocktailId"

.field private static final EXTRA_COCKTAIL_IDS:Ljava/lang/String; = "cocktailIds"

.field private static final EXTRA_COCKTAIL_VISIBILITY:Ljava/lang/String; = "cocktailVisibility"

.field private static final TAG:Ljava/lang/String; = "SlookCocktail"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.samsung.android.cocktail.v2.action.COCKTAIL_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onEnabled(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onDisabled(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string v0, "cocktailId"

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "cocktailId"

    .line 122
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "cocktailVisibility"

    .line 123
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "cocktailVisibility"

    .line 124
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 125
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onVisibilityChanged(Landroid/content/Context;II)V

    goto :goto_1

    .line 110
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string v0, "cocktailIds"

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "cocktailIds"

    .line 112
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p2

    .line 113
    invoke-static {p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;II)V
    .locals 0

    return-void
.end method
