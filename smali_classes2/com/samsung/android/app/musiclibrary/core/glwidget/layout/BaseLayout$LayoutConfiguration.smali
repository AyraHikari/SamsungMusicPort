.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LayoutConfiguration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Config:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    return-void
.end method


# virtual methods
.method protected reallign()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->doRealign()V

    return-void
.end method
