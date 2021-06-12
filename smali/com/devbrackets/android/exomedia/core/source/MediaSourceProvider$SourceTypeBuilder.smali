.class public Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceTypeBuilder"
.end annotation


# instance fields
.field public final a:Lcom/devbrackets/android/exomedia/core/source/builder/MediaSourceBuilder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/devbrackets/android/exomedia/core/source/builder/MediaSourceBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/core/source/builder/MediaSourceBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->a:Lcom/devbrackets/android/exomedia/core/source/builder/MediaSourceBuilder;

    .line 143
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->c:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->b:Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->d:Ljava/lang/String;

    return-void
.end method
