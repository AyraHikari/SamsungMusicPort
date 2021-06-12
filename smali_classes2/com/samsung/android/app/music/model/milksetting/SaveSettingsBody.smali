.class public Lcom/samsung/android/app/music/model/milksetting/SaveSettingsBody;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public genres:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "genres"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
