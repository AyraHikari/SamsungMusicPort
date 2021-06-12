.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/feature/USAFeatures;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final B_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->isGateEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/USAFeatures;->B_:Z

    return-void
.end method
