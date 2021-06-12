.class Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/look/cocktailbar/CocktailBarManagerInterface;


# static fields
.field public static final COCKTAIL_BAR_SERVICE:Ljava/lang/String; = "CocktailBarService"


# instance fields
.field private mCocktailBarManager:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CocktailBarService"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public closeCocktail(II)V
    .locals 2

    .line 75
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->closeCocktail(Ljava/lang/Object;II)V

    return-void
.end method

.method public disableCocktail(Landroid/content/ComponentName;)V
    .locals 2

    .line 80
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->disableCocktail(Ljava/lang/Object;Landroid/content/ComponentName;)V

    return-void
.end method

.method public getCocktailBarWindowType()I
    .locals 2

    .line 90
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->getCocktailBarWindowType(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCocktailIds(Landroid/content/ComponentName;)[I
    .locals 2

    .line 47
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->getCocktailIds(Ljava/lang/Object;Landroid/content/ComponentName;)[I

    move-result-object p1

    return-object p1
.end method

.method public isEnabledCocktail(Landroid/content/ComponentName;)Z
    .locals 2

    .line 85
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->isEnabledCocktail(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method

.method public notifyCocktailViewDataChanged(II)V
    .locals 2

    .line 42
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->notifyCocktailViewDataChanged(Ljava/lang/Object;II)V

    return-void
.end method

.method public partiallyUpdateCocktail(ILandroid/widget/RemoteViews;)V
    .locals 2

    .line 65
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->partiallyUpdateCocktail(Ljava/lang/Object;ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public registerListener(Ljava/lang/Object;)V
    .locals 2

    .line 105
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->registerListener(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setCocktailBarStatus(ZZ)V
    .locals 2

    .line 100
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->setCocktailBarStatus(Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public setOnLongClickPendingIntent(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .locals 2

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 126
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->semSetOnLongClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "setOnLongClickPendingIntent not available"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setOnLongClickPendingIntentTemplate(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .locals 2

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 136
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->semSetOnLongClickPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "setOnLongClickPendingIntentTemplate not available"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setOnPullPendingIntent(IILandroid/app/PendingIntent;)V
    .locals 2

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 116
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->setOnPullPendingIntent(Ljava/lang/Object;IILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "setOnPullPendingIntent works from N OS: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showCocktail(I)V
    .locals 2

    .line 70
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->showCocktail(Ljava/lang/Object;I)V

    return-void
.end method

.method public unregisterListener(Ljava/lang/Object;)V
    .locals 2

    .line 110
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->unregisterListener(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public updateCocktail(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/content/ComponentName;)V
    .locals 12

    move-object v0, p0

    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 55
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    move v5, p1

    move v6, p2

    move v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v3 .. v11}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->updateCocktail(Ljava/lang/Object;IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    move v7, p1

    move v8, p2

    move v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->updateCocktail(Ljava/lang/Object;IIILandroid/widget/RemoteViews;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public updateCocktail(ILandroid/widget/RemoteViews;)V
    .locals 7

    .line 22
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    .line 23
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->COCKTAIL_DISPLAY_POLICY_GENERAL:I

    .line 24
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v2

    iget v4, v2, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->COCKTAIL_CATEGORY_GLOBAL:I

    const/4 v6, 0x0

    move v2, p1

    move-object v5, p2

    .line 22
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->updateCocktail(Ljava/lang/Object;IIILandroid/widget/RemoteViews;Landroid/os/Bundle;)V

    return-void
.end method

.method public updateCocktail(ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 18

    move-object/from16 v0, p0

    .line 29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 30
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    .line 31
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v1

    iget v6, v1, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->COCKTAIL_DISPLAY_POLICY_GENERAL:I

    .line 32
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v1

    iget v7, v1, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->COCKTAIL_CATEGORY_GLOBAL:I

    const/4 v10, 0x0

    move/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 30
    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->updateCocktail(Ljava/lang/Object;IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v11

    iget-object v12, v0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    .line 35
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v1

    iget v14, v1, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->COCKTAIL_DISPLAY_POLICY_GENERAL:I

    .line 36
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v1

    iget v15, v1, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->COCKTAIL_CATEGORY_GLOBAL:I

    const/16 v17, 0x0

    move/from16 v13, p1

    move-object/from16 v16, p2

    .line 34
    invoke-virtual/range {v11 .. v17}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->updateCocktail(Ljava/lang/Object;IIILandroid/widget/RemoteViews;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public updateLongpressGesture(Z)V
    .locals 2

    .line 95
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SdlCocktailBarManager;->mCocktailBarManager:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/look/cocktailbar/RefCocktailBarManager;->updateLongpressGesture(Ljava/lang/Object;Z)V

    return-void
.end method
