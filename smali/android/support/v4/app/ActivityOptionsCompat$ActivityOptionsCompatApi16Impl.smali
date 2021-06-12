.class Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsCompatApi16Impl"
.end annotation


# instance fields
.field protected final mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 0

    .line 264
    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    .line 265
    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .line 270
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .locals 1

    .line 275
    instance-of v0, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;

    if-eqz v0, :cond_0

    .line 276
    check-cast p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;

    .line 278
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object p1, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    :cond_0
    return-void
.end method
