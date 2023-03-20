.class interface abstract Lcom/samsung/android/sdk/look/cocktailbar/CocktailBarManagerInterface;
.super Ljava/lang/Object;
.source "CocktailBarManagerInterface.java"


# virtual methods
.method public abstract closeCocktail(II)V
.end method

.method public abstract disableCocktail(Landroid/content/ComponentName;)V
.end method

.method public abstract getCocktailBarWindowType()I
.end method

.method public abstract getCocktailIds(Landroid/content/ComponentName;)[I
.end method

.method public abstract isEnabledCocktail(Landroid/content/ComponentName;)Z
.end method

.method public abstract notifyCocktailViewDataChanged(II)V
.end method

.method public abstract partiallyUpdateCocktail(ILandroid/widget/RemoteViews;)V
.end method

.method public abstract registerListener(Ljava/lang/Object;)V
.end method

.method public abstract setCocktailBarStatus(ZZ)V
.end method

.method public abstract setOnLongClickPendingIntent(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
.end method

.method public abstract setOnLongClickPendingIntentTemplate(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
.end method

.method public abstract setOnPullPendingIntent(IILandroid/app/PendingIntent;)V
.end method

.method public abstract showCocktail(I)V
.end method

.method public abstract unregisterListener(Ljava/lang/Object;)V
.end method

.method public abstract updateCocktail(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/content/ComponentName;)V
.end method

.method public abstract updateCocktail(ILandroid/widget/RemoteViews;)V
.end method

.method public abstract updateCocktail(ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
.end method

.method public abstract updateLongpressGesture(Z)V
.end method
