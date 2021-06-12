.class public Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/util/DeviceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonCompatibleDevice"
.end annotation


# instance fields
.field private a:Z

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;->b:Ljava/lang/String;

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;->c:Ljava/lang/String;

    return-object v0
.end method
