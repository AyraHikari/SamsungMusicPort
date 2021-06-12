.class public abstract Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator$BaseMatrix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseMatrix"
.end annotation


# instance fields
.field protected m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

.field protected mMatrix:[F


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 9
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator$BaseMatrix;->mMatrix:[F

    .line 12
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator$BaseMatrix;->m:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    return-void
.end method
