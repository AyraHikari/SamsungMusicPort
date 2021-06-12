.class Landroid/support/v4/feature/SeslFloatingFeatureReflector$FloatingFeatureApi24Impl;
.super Landroid/support/v4/feature/SeslFloatingFeatureReflector$FloatingFeatureApi21Impl;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/feature/SeslFloatingFeatureReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatingFeatureApi24Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/support/v4/feature/SeslFloatingFeatureReflector$FloatingFeatureApi21Impl;-><init>()V

    const-string v0, "com.samsung.android.feature.SemFloatingFeature"

    .line 62
    sput-object v0, Landroid/support/v4/feature/SeslFloatingFeatureReflector$FloatingFeatureApi24Impl;->mClassName:Ljava/lang/String;

    return-void
.end method
